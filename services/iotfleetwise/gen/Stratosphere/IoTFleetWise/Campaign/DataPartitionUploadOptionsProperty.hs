module Stratosphere.IoTFleetWise.Campaign.DataPartitionUploadOptionsProperty (
        DataPartitionUploadOptionsProperty(..),
        mkDataPartitionUploadOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPartitionUploadOptionsProperty
  = DataPartitionUploadOptionsProperty {conditionLanguageVersion :: (Prelude.Maybe (Value Prelude.Integer)),
                                        expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPartitionUploadOptionsProperty ::
  Value Prelude.Text -> DataPartitionUploadOptionsProperty
mkDataPartitionUploadOptionsProperty expression
  = DataPartitionUploadOptionsProperty
      {expression = expression,
       conditionLanguageVersion = Prelude.Nothing}
instance ToResourceProperties DataPartitionUploadOptionsProperty where
  toResourceProperties DataPartitionUploadOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.DataPartitionUploadOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "ConditionLanguageVersion"
                                 Prelude.<$> conditionLanguageVersion]))}
instance JSON.ToJSON DataPartitionUploadOptionsProperty where
  toJSON DataPartitionUploadOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "ConditionLanguageVersion"
                    Prelude.<$> conditionLanguageVersion])))
instance Property "ConditionLanguageVersion" DataPartitionUploadOptionsProperty where
  type PropertyType "ConditionLanguageVersion" DataPartitionUploadOptionsProperty = Value Prelude.Integer
  set newValue DataPartitionUploadOptionsProperty {..}
    = DataPartitionUploadOptionsProperty
        {conditionLanguageVersion = Prelude.pure newValue, ..}
instance Property "Expression" DataPartitionUploadOptionsProperty where
  type PropertyType "Expression" DataPartitionUploadOptionsProperty = Value Prelude.Text
  set newValue DataPartitionUploadOptionsProperty {..}
    = DataPartitionUploadOptionsProperty {expression = newValue, ..}