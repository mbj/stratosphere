module Stratosphere.CloudFront.OriginAccessControl (
        module Exports, OriginAccessControl(..), mkOriginAccessControl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.OriginAccessControl.OriginAccessControlConfigProperty as Exports
import Stratosphere.ResourceProperties
data OriginAccessControl
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-originaccesscontrol.html>
    OriginAccessControl {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-originaccesscontrol.html#cfn-cloudfront-originaccesscontrol-originaccesscontrolconfig>
                         originAccessControlConfig :: OriginAccessControlConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginAccessControl ::
  OriginAccessControlConfigProperty -> OriginAccessControl
mkOriginAccessControl originAccessControlConfig
  = OriginAccessControl
      {haddock_workaround_ = (),
       originAccessControlConfig = originAccessControlConfig}
instance ToResourceProperties OriginAccessControl where
  toResourceProperties OriginAccessControl {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::OriginAccessControl",
         supportsTags = Prelude.False,
         properties = ["OriginAccessControlConfig"
                         JSON..= originAccessControlConfig]}
instance JSON.ToJSON OriginAccessControl where
  toJSON OriginAccessControl {..}
    = JSON.object
        ["OriginAccessControlConfig" JSON..= originAccessControlConfig]
instance Property "OriginAccessControlConfig" OriginAccessControl where
  type PropertyType "OriginAccessControlConfig" OriginAccessControl = OriginAccessControlConfigProperty
  set newValue OriginAccessControl {..}
    = OriginAccessControl {originAccessControlConfig = newValue, ..}