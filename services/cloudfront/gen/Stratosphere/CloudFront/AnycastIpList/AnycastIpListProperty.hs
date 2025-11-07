module Stratosphere.CloudFront.AnycastIpList.AnycastIpListProperty (
        AnycastIpListProperty(..), mkAnycastIpListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnycastIpListProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html>
    AnycastIpListProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-anycastips>
                           anycastIps :: (ValueList Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-arn>
                           arn :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-id>
                           id :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-ipaddresstype>
                           ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-ipcount>
                           ipCount :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-lastmodifiedtime>
                           lastModifiedTime :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-anycastiplist-anycastiplist.html#cfn-cloudfront-anycastiplist-anycastiplist-status>
                           status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnycastIpListProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text -> AnycastIpListProperty
mkAnycastIpListProperty
  anycastIps
  arn
  id
  ipCount
  lastModifiedTime
  name
  status
  = AnycastIpListProperty
      {haddock_workaround_ = (), anycastIps = anycastIps, arn = arn,
       id = id, ipCount = ipCount, lastModifiedTime = lastModifiedTime,
       name = name, status = status, ipAddressType = Prelude.Nothing}
instance ToResourceProperties AnycastIpListProperty where
  toResourceProperties AnycastIpListProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::AnycastIpList.AnycastIpList",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AnycastIps" JSON..= anycastIps, "Arn" JSON..= arn,
                            "Id" JSON..= id, "IpCount" JSON..= ipCount,
                            "LastModifiedTime" JSON..= lastModifiedTime, "Name" JSON..= name,
                            "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType]))}
instance JSON.ToJSON AnycastIpListProperty where
  toJSON AnycastIpListProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AnycastIps" JSON..= anycastIps, "Arn" JSON..= arn,
               "Id" JSON..= id, "IpCount" JSON..= ipCount,
               "LastModifiedTime" JSON..= lastModifiedTime, "Name" JSON..= name,
               "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType])))
instance Property "AnycastIps" AnycastIpListProperty where
  type PropertyType "AnycastIps" AnycastIpListProperty = ValueList Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {anycastIps = newValue, ..}
instance Property "Arn" AnycastIpListProperty where
  type PropertyType "Arn" AnycastIpListProperty = Value Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {arn = newValue, ..}
instance Property "Id" AnycastIpListProperty where
  type PropertyType "Id" AnycastIpListProperty = Value Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {id = newValue, ..}
instance Property "IpAddressType" AnycastIpListProperty where
  type PropertyType "IpAddressType" AnycastIpListProperty = Value Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {ipAddressType = Prelude.pure newValue, ..}
instance Property "IpCount" AnycastIpListProperty where
  type PropertyType "IpCount" AnycastIpListProperty = Value Prelude.Integer
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {ipCount = newValue, ..}
instance Property "LastModifiedTime" AnycastIpListProperty where
  type PropertyType "LastModifiedTime" AnycastIpListProperty = Value Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {lastModifiedTime = newValue, ..}
instance Property "Name" AnycastIpListProperty where
  type PropertyType "Name" AnycastIpListProperty = Value Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {name = newValue, ..}
instance Property "Status" AnycastIpListProperty where
  type PropertyType "Status" AnycastIpListProperty = Value Prelude.Text
  set newValue AnycastIpListProperty {..}
    = AnycastIpListProperty {status = newValue, ..}