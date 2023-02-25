module Stratosphere.CloudTrail.Trail.DataResourceProperty (
        DataResourceProperty(..), mkDataResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataResourceProperty
  = DataResourceProperty {type' :: (Value Prelude.Text),
                          values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkDataResourceProperty ::
  Value Prelude.Text -> DataResourceProperty
mkDataResourceProperty type'
  = DataResourceProperty {type' = type', values = Prelude.Nothing}
instance ToResourceProperties DataResourceProperty where
  toResourceProperties DataResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.DataResource",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))}
instance JSON.ToJSON DataResourceProperty where
  toJSON DataResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])))
instance Property "Type" DataResourceProperty where
  type PropertyType "Type" DataResourceProperty = Value Prelude.Text
  set newValue DataResourceProperty {..}
    = DataResourceProperty {type' = newValue, ..}
instance Property "Values" DataResourceProperty where
  type PropertyType "Values" DataResourceProperty = ValueList (Value Prelude.Text)
  set newValue DataResourceProperty {..}
    = DataResourceProperty {values = Prelude.pure newValue, ..}