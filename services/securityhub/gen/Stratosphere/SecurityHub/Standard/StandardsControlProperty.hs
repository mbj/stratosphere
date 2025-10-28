module Stratosphere.SecurityHub.Standard.StandardsControlProperty (
        StandardsControlProperty(..), mkStandardsControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StandardsControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-standard-standardscontrol.html>
    StandardsControlProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-standard-standardscontrol.html#cfn-securityhub-standard-standardscontrol-reason>
                              reason :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-standard-standardscontrol.html#cfn-securityhub-standard-standardscontrol-standardscontrolarn>
                              standardsControlArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStandardsControlProperty ::
  Value Prelude.Text -> StandardsControlProperty
mkStandardsControlProperty standardsControlArn
  = StandardsControlProperty
      {haddock_workaround_ = (),
       standardsControlArn = standardsControlArn,
       reason = Prelude.Nothing}
instance ToResourceProperties StandardsControlProperty where
  toResourceProperties StandardsControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Standard.StandardsControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StandardsControlArn" JSON..= standardsControlArn]
                           (Prelude.catMaybes [(JSON..=) "Reason" Prelude.<$> reason]))}
instance JSON.ToJSON StandardsControlProperty where
  toJSON StandardsControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StandardsControlArn" JSON..= standardsControlArn]
              (Prelude.catMaybes [(JSON..=) "Reason" Prelude.<$> reason])))
instance Property "Reason" StandardsControlProperty where
  type PropertyType "Reason" StandardsControlProperty = Value Prelude.Text
  set newValue StandardsControlProperty {..}
    = StandardsControlProperty {reason = Prelude.pure newValue, ..}
instance Property "StandardsControlArn" StandardsControlProperty where
  type PropertyType "StandardsControlArn" StandardsControlProperty = Value Prelude.Text
  set newValue StandardsControlProperty {..}
    = StandardsControlProperty {standardsControlArn = newValue, ..}