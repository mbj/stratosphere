module Stratosphere.CloudFront.AnycastIpList (
        module Exports, AnycastIpList(..), mkAnycastIpList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.AnycastIpList.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AnycastIpList
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-anycastiplist.html>
    AnycastIpList {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-anycastiplist.html#cfn-cloudfront-anycastiplist-ipaddresstype>
                   ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-anycastiplist.html#cfn-cloudfront-anycastiplist-ipcount>
                   ipCount :: (Value Prelude.Integer),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-anycastiplist.html#cfn-cloudfront-anycastiplist-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-anycastiplist.html#cfn-cloudfront-anycastiplist-tags>
                   tags :: (Prelude.Maybe TagsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAnycastIpList ::
  Value Prelude.Integer -> Value Prelude.Text -> AnycastIpList
mkAnycastIpList ipCount name
  = AnycastIpList
      {haddock_workaround_ = (), ipCount = ipCount, name = name,
       ipAddressType = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AnycastIpList where
  toResourceProperties AnycastIpList {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::AnycastIpList",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpCount" JSON..= ipCount, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AnycastIpList where
  toJSON AnycastIpList {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpCount" JSON..= ipCount, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IpAddressType" AnycastIpList where
  type PropertyType "IpAddressType" AnycastIpList = Value Prelude.Text
  set newValue AnycastIpList {..}
    = AnycastIpList {ipAddressType = Prelude.pure newValue, ..}
instance Property "IpCount" AnycastIpList where
  type PropertyType "IpCount" AnycastIpList = Value Prelude.Integer
  set newValue AnycastIpList {..}
    = AnycastIpList {ipCount = newValue, ..}
instance Property "Name" AnycastIpList where
  type PropertyType "Name" AnycastIpList = Value Prelude.Text
  set newValue AnycastIpList {..}
    = AnycastIpList {name = newValue, ..}
instance Property "Tags" AnycastIpList where
  type PropertyType "Tags" AnycastIpList = TagsProperty
  set newValue AnycastIpList {..}
    = AnycastIpList {tags = Prelude.pure newValue, ..}