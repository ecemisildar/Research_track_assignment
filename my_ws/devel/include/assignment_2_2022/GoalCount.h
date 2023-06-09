// Generated by gencpp from file assignment_2_2022/GoalCount.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_2_2022_MESSAGE_GOALCOUNT_H
#define ASSIGNMENT_2_2022_MESSAGE_GOALCOUNT_H

#include <ros/service_traits.h>


#include <assignment_2_2022/GoalCountRequest.h>
#include <assignment_2_2022/GoalCountResponse.h>


namespace assignment_2_2022
{

struct GoalCount
{

typedef GoalCountRequest Request;
typedef GoalCountResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GoalCount
} // namespace assignment_2_2022


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::assignment_2_2022::GoalCount > {
  static const char* value()
  {
    return "c67511bea917dd86becf126baeb0026c";
  }

  static const char* value(const ::assignment_2_2022::GoalCount&) { return value(); }
};

template<>
struct DataType< ::assignment_2_2022::GoalCount > {
  static const char* value()
  {
    return "assignment_2_2022/GoalCount";
  }

  static const char* value(const ::assignment_2_2022::GoalCount&) { return value(); }
};


// service_traits::MD5Sum< ::assignment_2_2022::GoalCountRequest> should match
// service_traits::MD5Sum< ::assignment_2_2022::GoalCount >
template<>
struct MD5Sum< ::assignment_2_2022::GoalCountRequest>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2022::GoalCount >::value();
  }
  static const char* value(const ::assignment_2_2022::GoalCountRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2022::GoalCountRequest> should match
// service_traits::DataType< ::assignment_2_2022::GoalCount >
template<>
struct DataType< ::assignment_2_2022::GoalCountRequest>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2022::GoalCount >::value();
  }
  static const char* value(const ::assignment_2_2022::GoalCountRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::assignment_2_2022::GoalCountResponse> should match
// service_traits::MD5Sum< ::assignment_2_2022::GoalCount >
template<>
struct MD5Sum< ::assignment_2_2022::GoalCountResponse>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_2_2022::GoalCount >::value();
  }
  static const char* value(const ::assignment_2_2022::GoalCountResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_2_2022::GoalCountResponse> should match
// service_traits::DataType< ::assignment_2_2022::GoalCount >
template<>
struct DataType< ::assignment_2_2022::GoalCountResponse>
{
  static const char* value()
  {
    return DataType< ::assignment_2_2022::GoalCount >::value();
  }
  static const char* value(const ::assignment_2_2022::GoalCountResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASSIGNMENT_2_2022_MESSAGE_GOALCOUNT_H
