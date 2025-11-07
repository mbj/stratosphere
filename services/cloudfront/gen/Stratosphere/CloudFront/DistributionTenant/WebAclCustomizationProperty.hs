module Stratosphere.CloudFront.DistributionTenant.WebAclCustomizationProperty (
        WebAclCustomizationProperty(..), mkWebAclCustomizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WebAclCustomizationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-webaclcustomization.html>
    WebAclCustomizationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-webaclcustomization.html#cfn-cloudfront-distributiontenant-webaclcustomization-action>
                                 action :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributiontenant-webaclcustomization.html#cfn-cloudfront-distributiontenant-webaclcustomization-arn>
                                 arn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWebAclCustomizationProperty :: WebAclCustomizationProperty
mkWebAclCustomizationProperty
  = WebAclCustomizationProperty
      {haddock_workaround_ = (), action = Prelude.Nothing,
       arn = Prelude.Nothing}
instance ToResourceProperties WebAclCustomizationProperty where
  toResourceProperties WebAclCustomizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::DistributionTenant.WebAclCustomization",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "Arn" Prelude.<$> arn])}
instance JSON.ToJSON WebAclCustomizationProperty where
  toJSON WebAclCustomizationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "Arn" Prelude.<$> arn]))
instance Property "Action" WebAclCustomizationProperty where
  type PropertyType "Action" WebAclCustomizationProperty = Value Prelude.Text
  set newValue WebAclCustomizationProperty {..}
    = WebAclCustomizationProperty {action = Prelude.pure newValue, ..}
instance Property "Arn" WebAclCustomizationProperty where
  type PropertyType "Arn" WebAclCustomizationProperty = Value Prelude.Text
  set newValue WebAclCustomizationProperty {..}
    = WebAclCustomizationProperty {arn = Prelude.pure newValue, ..}