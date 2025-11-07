module Stratosphere.CloudFront.ConnectionGroup (
        ConnectionGroup(..), mkConnectionGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ConnectionGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-connectiongroup.html>
    ConnectionGroup {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-connectiongroup.html#cfn-cloudfront-connectiongroup-anycastiplistid>
                     anycastIpListId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-connectiongroup.html#cfn-cloudfront-connectiongroup-enabled>
                     enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-connectiongroup.html#cfn-cloudfront-connectiongroup-ipv6enabled>
                     ipv6Enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-connectiongroup.html#cfn-cloudfront-connectiongroup-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-connectiongroup.html#cfn-cloudfront-connectiongroup-tags>
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionGroup :: Value Prelude.Text -> ConnectionGroup
mkConnectionGroup name
  = ConnectionGroup
      {haddock_workaround_ = (), name = name,
       anycastIpListId = Prelude.Nothing, enabled = Prelude.Nothing,
       ipv6Enabled = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ConnectionGroup where
  toResourceProperties ConnectionGroup {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ConnectionGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AnycastIpListId" Prelude.<$> anycastIpListId,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "Ipv6Enabled" Prelude.<$> ipv6Enabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ConnectionGroup where
  toJSON ConnectionGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AnycastIpListId" Prelude.<$> anycastIpListId,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "Ipv6Enabled" Prelude.<$> ipv6Enabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AnycastIpListId" ConnectionGroup where
  type PropertyType "AnycastIpListId" ConnectionGroup = Value Prelude.Text
  set newValue ConnectionGroup {..}
    = ConnectionGroup {anycastIpListId = Prelude.pure newValue, ..}
instance Property "Enabled" ConnectionGroup where
  type PropertyType "Enabled" ConnectionGroup = Value Prelude.Bool
  set newValue ConnectionGroup {..}
    = ConnectionGroup {enabled = Prelude.pure newValue, ..}
instance Property "Ipv6Enabled" ConnectionGroup where
  type PropertyType "Ipv6Enabled" ConnectionGroup = Value Prelude.Bool
  set newValue ConnectionGroup {..}
    = ConnectionGroup {ipv6Enabled = Prelude.pure newValue, ..}
instance Property "Name" ConnectionGroup where
  type PropertyType "Name" ConnectionGroup = Value Prelude.Text
  set newValue ConnectionGroup {..}
    = ConnectionGroup {name = newValue, ..}
instance Property "Tags" ConnectionGroup where
  type PropertyType "Tags" ConnectionGroup = [Tag]
  set newValue ConnectionGroup {..}
    = ConnectionGroup {tags = Prelude.pure newValue, ..}