module Stratosphere.SecurityHub.Standard.StandardsControlProperty (
        StandardsControlProperty(..), mkStandardsControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StandardsControlProperty
  = StandardsControlProperty {reason :: (Prelude.Maybe (Value Prelude.Text)),
                              standardsControlArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStandardsControlProperty ::
  Value Prelude.Text -> StandardsControlProperty
mkStandardsControlProperty standardsControlArn
  = StandardsControlProperty
      {standardsControlArn = standardsControlArn,
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