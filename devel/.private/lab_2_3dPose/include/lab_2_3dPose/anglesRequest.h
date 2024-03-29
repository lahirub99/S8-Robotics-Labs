// Generated by gencpp from file lab_2_3dPose/anglesRequest.msg
// DO NOT EDIT!


#ifndef LAB_2_3DPOSE_MESSAGE_ANGLESREQUEST_H
#define LAB_2_3DPOSE_MESSAGE_ANGLESREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab_2_3dPose
{
template <class ContainerAllocator>
struct anglesRequest_
{
  typedef anglesRequest_<ContainerAllocator> Type;

  anglesRequest_()
    : a(0.0)
    , b(0.0)
    , c(0.0)
    , format()  {
    }
  anglesRequest_(const ContainerAllocator& _alloc)
    : a(0.0)
    , b(0.0)
    , c(0.0)
    , format(_alloc)  {
  (void)_alloc;
    }



   typedef double _a_type;
  _a_type a;

   typedef double _b_type;
  _b_type b;

   typedef double _c_type;
  _c_type c;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _format_type;
  _format_type format;





  typedef boost::shared_ptr< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct anglesRequest_

typedef ::lab_2_3dPose::anglesRequest_<std::allocator<void> > anglesRequest;

typedef boost::shared_ptr< ::lab_2_3dPose::anglesRequest > anglesRequestPtr;
typedef boost::shared_ptr< ::lab_2_3dPose::anglesRequest const> anglesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab_2_3dPose::anglesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab_2_3dPose::anglesRequest_<ContainerAllocator1> & lhs, const ::lab_2_3dPose::anglesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a &&
    lhs.b == rhs.b &&
    lhs.c == rhs.c &&
    lhs.format == rhs.format;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab_2_3dPose::anglesRequest_<ContainerAllocator1> & lhs, const ::lab_2_3dPose::anglesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab_2_3dPose

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1d6a011bc4246b3012969d0fc00586a";
  }

  static const char* value(const ::lab_2_3dPose::anglesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1d6a011bc4246b3ULL;
  static const uint64_t static_value2 = 0x012969d0fc00586aULL;
};

template<class ContainerAllocator>
struct DataType< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab_2_3dPose/anglesRequest";
  }

  static const char* value(const ::lab_2_3dPose::anglesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 a\n"
"float64 b\n"
"float64 c\n"
"string format\n"
;
  }

  static const char* value(const ::lab_2_3dPose::anglesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
      stream.next(m.c);
      stream.next(m.format);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct anglesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab_2_3dPose::anglesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab_2_3dPose::anglesRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<double>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<double>::stream(s, indent + "  ", v.b);
    s << indent << "c: ";
    Printer<double>::stream(s, indent + "  ", v.c);
    s << indent << "format: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.format);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB_2_3DPOSE_MESSAGE_ANGLESREQUEST_H
