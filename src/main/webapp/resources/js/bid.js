// 컨택참가(bid) 관련 스크립트
// 마감시간 카운트 다운
const countDownTimer = function (id, date) {
    //alert('체크');
    var _vDate = new Date(date) // 전달 받은 일자
    var _second = 1000
    var _minute = _second * 60
    var _hour = _minute * 60
    var _day = _hour * 24
    var timer
    function showRemaining() {
        var now = new Date()
        var distDt = _vDate.setDate(_vDate.getDate() + 1) - now
        if (distDt < 0) {
            clearInterval(timer)
            tag2.textContent = '마감 완료'
            tag_button.textContent = '　마감　'
            tag_button.style = 'pointer-events: none; cursor: default; border: 1px solid grey; color: grey;'
            return
        }
        var days = Math.floor(distDt / _day)
        var hours = Math.floor((distDt % _day) / _hour)
        var minutes = Math.floor((distDt % _hour) / _minute)
        var seconds = Math.floor((distDt % _minute) / _second)
        //document.getElementById(id).textContent = date.toLocaleString() + "까지 : ";
        tag1.textContent = hours + '시간 '
        tag1.textContent += minutes + '분 '
        tag1.textContent += seconds + '초'
    }
    timer = setInterval(showRemaining, 10)
}
var dateObj = new Date()
dateObj.setDate(dateObj.getDate() + 1)
var tag1 = document.getElementById('count_time')
var tag2 = document.getElementById('count_time_con')
var tag_button = document.getElementById('bid')
console.log(tag2)
countDownTimer('count_time', tag1.textContent)

// 입찰

$(function () {
    $('#bid_price').keyup(function () {
        let price = $('#bid_price')
        chkNumber(price)
    })
    // $("#bid").click(function() {
    $(document).on('click', '#bid', function () {
        let param = {
            lvc: $('#count_time_con').text().trim(),
            lastValue: $('#lastValue').text().trim(),
            hostId: $('#hostId').text().trim(),
            memberId: $('#memberId').text().trim(),
            loginFlag: $('#loginFlag').text().trim(),
            bidPrice: $('#bid_price').val().replace(/,/g, "").trim(),
            contactId: $('#contactId').text().trim(),
        }

        $.ajax({
            type: 'post',
            data: param,
            url: 'bid_after.do',
            success: parseData,
        })

        function parseData(result) {
            $('#bid_result').text(result)
            var result = result.trim()
            var iValue1 = result.indexOf(':')
            var iValue2 = result.indexOf('완료')

            // 최고가 변경시
            if (iValue1 != -1) {
                result = result.split(':')
                $('#bid_result').text(result[0])
                $('#lastValue').text(addComma(result[1]) + '원')

                // 입찰 완료시 최고가 금액 변경
            } else if (iValue2 != -1) {
                $('#lastValue').text(addComma($('#bid_price').val()) + '원')

                // 최근 입찰내역 업데이트
                $('tbody > tr > td:nth-child(2)').addClass('recentBid-1')
                $('tbody > tr > td:nth-child(3)').addClass('recentBid-2')
                $('tbody > tr > td:nth-child(4)').addClass('recentBid-3')

                let rb1 = document.getElementsByClassName('recentBid-1')
                let rb2 = document.getElementsByClassName('recentBid-2')
                let rb3 = document.getElementsByClassName('recentBid-3')

                for (var i = 2; i > 0; i--) {
                    $('.recentBid-1')[i].textContent = rb1[i - 1].textContent
                    $('.recentBid-2')[i].textContent = rb2[i - 1].textContent
                    $('.recentBid-3')[i].textContent = rb3[i - 1].textContent
                }

                // 입찰 날짜 계산
                var Now = new Date()
                var NowTime = String(Now.getFullYear())
                var monthCount = String(Now.getMonth() + 1)
                if (monthCount.length == 1) {
                    monthCount = String('0' + monthCount)
                }
                NowTime += String('-' + monthCount)
                var dayCount = String(Now.getDate())
                if (dayCount.length == 1) {
                    dayCount = String('0' + dayCount)
                }
                NowTime += String('-' + dayCount)
                NowTime += String(' ' + Now.getHours())
                NowTime += String(':' + Now.getMinutes())
                NowTime += String(':' + Now.getSeconds())

                // 이름 마스킹
                var maskName = $('#upName').text().trim()
                maskName = maskName.replace(/(?<=.{1})./gi, '*')

                // 입찰내역 값 삽입
                $('.recentBid-1')[0].textContent = maskName
                $('.recentBid-2')[0].textContent = NowTime
                $('.recentBid-3')[0].textContent = addComma($('#bid_price').val()) + '원'

                $('tbody > tr:nth-child(1)').css({ fontSize: '20px' })
                $('tbody > tr:nth-child(1)').animate({ fontSize: '14px' }, 600)
            }
        }
    })
    function numberWithCommas(num) {
        var parts = num.toString().split('.')
        return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ',') + (parts[1] ? '.' + parts[1] : '')
    }

    // 숫자 체크(숫자 이외 값 모두 제거)
    function chkNumber(obj) {
        var tmpValue = $(obj)
            .val()
            .replace(/[^0-9,]/g, '')
        tmpValue = tmpValue.replace(/[,]/g, '')
        // 천단위 콤마 처리 후 값 강제변경
        obj.val(numberWithCommas(tmpValue))
    }
})
