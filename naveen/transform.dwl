%dw 2.0
import dw::core::Strings
output application/json  
---
if (payload.message != "no data")
  payload map (item, index) -> {
    "rate": (item.rate * 100) as String ,
    "APY": (item.APY * 100) as String
  }
else
  []
  //using import strings to getting string format of rate and APY after multiplying a certain value to getting a string value.