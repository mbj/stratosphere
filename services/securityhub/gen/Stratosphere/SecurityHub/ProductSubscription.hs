module Stratosphere.SecurityHub.ProductSubscription (
        ProductSubscription(..), mkProductSubscription
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProductSubscription
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-productsubscription.html>
    ProductSubscription {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securityhub-productsubscription.html#cfn-securityhub-productsubscription-productarn>
                         productArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProductSubscription :: Value Prelude.Text -> ProductSubscription
mkProductSubscription productArn
  = ProductSubscription
      {haddock_workaround_ = (), productArn = productArn}
instance ToResourceProperties ProductSubscription where
  toResourceProperties ProductSubscription {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::ProductSubscription",
         supportsTags = Prelude.False,
         properties = ["ProductArn" JSON..= productArn]}
instance JSON.ToJSON ProductSubscription where
  toJSON ProductSubscription {..}
    = JSON.object ["ProductArn" JSON..= productArn]
instance Property "ProductArn" ProductSubscription where
  type PropertyType "ProductArn" ProductSubscription = Value Prelude.Text
  set newValue ProductSubscription {..}
    = ProductSubscription {productArn = newValue, ..}