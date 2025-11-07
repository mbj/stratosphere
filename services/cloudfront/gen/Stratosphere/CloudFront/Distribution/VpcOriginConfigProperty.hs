module Stratosphere.CloudFront.Distribution.VpcOriginConfigProperty (
        VpcOriginConfigProperty(..), mkVpcOriginConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOriginConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-vpcoriginconfig.html>
    VpcOriginConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-vpcoriginconfig.html#cfn-cloudfront-distribution-vpcoriginconfig-originkeepalivetimeout>
                             originKeepaliveTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-vpcoriginconfig.html#cfn-cloudfront-distribution-vpcoriginconfig-originreadtimeout>
                             originReadTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-vpcoriginconfig.html#cfn-cloudfront-distribution-vpcoriginconfig-owneraccountid>
                             ownerAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-vpcoriginconfig.html#cfn-cloudfront-distribution-vpcoriginconfig-vpcoriginid>
                             vpcOriginId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOriginConfigProperty ::
  Value Prelude.Text -> VpcOriginConfigProperty
mkVpcOriginConfigProperty vpcOriginId
  = VpcOriginConfigProperty
      {haddock_workaround_ = (), vpcOriginId = vpcOriginId,
       originKeepaliveTimeout = Prelude.Nothing,
       originReadTimeout = Prelude.Nothing,
       ownerAccountId = Prelude.Nothing}
instance ToResourceProperties VpcOriginConfigProperty where
  toResourceProperties VpcOriginConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.VpcOriginConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcOriginId" JSON..= vpcOriginId]
                           (Prelude.catMaybes
                              [(JSON..=) "OriginKeepaliveTimeout"
                                 Prelude.<$> originKeepaliveTimeout,
                               (JSON..=) "OriginReadTimeout" Prelude.<$> originReadTimeout,
                               (JSON..=) "OwnerAccountId" Prelude.<$> ownerAccountId]))}
instance JSON.ToJSON VpcOriginConfigProperty where
  toJSON VpcOriginConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcOriginId" JSON..= vpcOriginId]
              (Prelude.catMaybes
                 [(JSON..=) "OriginKeepaliveTimeout"
                    Prelude.<$> originKeepaliveTimeout,
                  (JSON..=) "OriginReadTimeout" Prelude.<$> originReadTimeout,
                  (JSON..=) "OwnerAccountId" Prelude.<$> ownerAccountId])))
instance Property "OriginKeepaliveTimeout" VpcOriginConfigProperty where
  type PropertyType "OriginKeepaliveTimeout" VpcOriginConfigProperty = Value Prelude.Integer
  set newValue VpcOriginConfigProperty {..}
    = VpcOriginConfigProperty
        {originKeepaliveTimeout = Prelude.pure newValue, ..}
instance Property "OriginReadTimeout" VpcOriginConfigProperty where
  type PropertyType "OriginReadTimeout" VpcOriginConfigProperty = Value Prelude.Integer
  set newValue VpcOriginConfigProperty {..}
    = VpcOriginConfigProperty
        {originReadTimeout = Prelude.pure newValue, ..}
instance Property "OwnerAccountId" VpcOriginConfigProperty where
  type PropertyType "OwnerAccountId" VpcOriginConfigProperty = Value Prelude.Text
  set newValue VpcOriginConfigProperty {..}
    = VpcOriginConfigProperty
        {ownerAccountId = Prelude.pure newValue, ..}
instance Property "VpcOriginId" VpcOriginConfigProperty where
  type PropertyType "VpcOriginId" VpcOriginConfigProperty = Value Prelude.Text
  set newValue VpcOriginConfigProperty {..}
    = VpcOriginConfigProperty {vpcOriginId = newValue, ..}