module Stratosphere.CloudFront.KeyGroup (
        module Exports, KeyGroup(..), mkKeyGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.KeyGroup.KeyGroupConfigProperty as Exports
import Stratosphere.ResourceProperties
data KeyGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-keygroup.html>
    KeyGroup {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-keygroup.html#cfn-cloudfront-keygroup-keygroupconfig>
              keyGroupConfig :: KeyGroupConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyGroup :: KeyGroupConfigProperty -> KeyGroup
mkKeyGroup keyGroupConfig
  = KeyGroup
      {haddock_workaround_ = (), keyGroupConfig = keyGroupConfig}
instance ToResourceProperties KeyGroup where
  toResourceProperties KeyGroup {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::KeyGroup",
         supportsTags = Prelude.False,
         properties = ["KeyGroupConfig" JSON..= keyGroupConfig]}
instance JSON.ToJSON KeyGroup where
  toJSON KeyGroup {..}
    = JSON.object ["KeyGroupConfig" JSON..= keyGroupConfig]
instance Property "KeyGroupConfig" KeyGroup where
  type PropertyType "KeyGroupConfig" KeyGroup = KeyGroupConfigProperty
  set newValue KeyGroup {..}
    = KeyGroup {keyGroupConfig = newValue, ..}