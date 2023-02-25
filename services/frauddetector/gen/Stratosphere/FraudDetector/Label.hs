module Stratosphere.FraudDetector.Label (
        Label(..), mkLabel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Label
  = Label {description :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Value Prelude.Text),
           tags :: (Prelude.Maybe [Tag])}
mkLabel :: Value Prelude.Text -> Label
mkLabel name
  = Label
      {name = name, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Label where
  toResourceProperties Label {..}
    = ResourceProperties
        {awsType = "AWS::FraudDetector::Label",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Label where
  toJSON Label {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Label where
  type PropertyType "Description" Label = Value Prelude.Text
  set newValue Label {..}
    = Label {description = Prelude.pure newValue, ..}
instance Property "Name" Label where
  type PropertyType "Name" Label = Value Prelude.Text
  set newValue Label {..} = Label {name = newValue, ..}
instance Property "Tags" Label where
  type PropertyType "Tags" Label = [Tag]
  set newValue Label {..} = Label {tags = Prelude.pure newValue, ..}