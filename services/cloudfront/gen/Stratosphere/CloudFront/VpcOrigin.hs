module Stratosphere.CloudFront.VpcOrigin (
        module Exports, VpcOrigin(..), mkVpcOrigin
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.VpcOrigin.VpcOriginEndpointConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data VpcOrigin
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-vpcorigin.html>
    VpcOrigin {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-vpcorigin.html#cfn-cloudfront-vpcorigin-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-vpcorigin.html#cfn-cloudfront-vpcorigin-vpcoriginendpointconfig>
               vpcOriginEndpointConfig :: VpcOriginEndpointConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOrigin :: VpcOriginEndpointConfigProperty -> VpcOrigin
mkVpcOrigin vpcOriginEndpointConfig
  = VpcOrigin
      {haddock_workaround_ = (),
       vpcOriginEndpointConfig = vpcOriginEndpointConfig,
       tags = Prelude.Nothing}
instance ToResourceProperties VpcOrigin where
  toResourceProperties VpcOrigin {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::VpcOrigin",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcOriginEndpointConfig" JSON..= vpcOriginEndpointConfig]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VpcOrigin where
  toJSON VpcOrigin {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcOriginEndpointConfig" JSON..= vpcOriginEndpointConfig]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Tags" VpcOrigin where
  type PropertyType "Tags" VpcOrigin = [Tag]
  set newValue VpcOrigin {..}
    = VpcOrigin {tags = Prelude.pure newValue, ..}
instance Property "VpcOriginEndpointConfig" VpcOrigin where
  type PropertyType "VpcOriginEndpointConfig" VpcOrigin = VpcOriginEndpointConfigProperty
  set newValue VpcOrigin {..}
    = VpcOrigin {vpcOriginEndpointConfig = newValue, ..}