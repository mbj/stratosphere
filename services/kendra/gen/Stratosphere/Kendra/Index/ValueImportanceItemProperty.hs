module Stratosphere.Kendra.Index.ValueImportanceItemProperty (
        ValueImportanceItemProperty(..), mkValueImportanceItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValueImportanceItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitem.html>
    ValueImportanceItemProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitem.html#cfn-kendra-index-valueimportanceitem-key>
                                 key :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-valueimportanceitem.html#cfn-kendra-index-valueimportanceitem-value>
                                 value :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValueImportanceItemProperty :: ValueImportanceItemProperty
mkValueImportanceItemProperty
  = ValueImportanceItemProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ValueImportanceItemProperty where
  toResourceProperties ValueImportanceItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.ValueImportanceItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ValueImportanceItemProperty where
  toJSON ValueImportanceItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ValueImportanceItemProperty where
  type PropertyType "Key" ValueImportanceItemProperty = Value Prelude.Text
  set newValue ValueImportanceItemProperty {..}
    = ValueImportanceItemProperty {key = Prelude.pure newValue, ..}
instance Property "Value" ValueImportanceItemProperty where
  type PropertyType "Value" ValueImportanceItemProperty = Value Prelude.Integer
  set newValue ValueImportanceItemProperty {..}
    = ValueImportanceItemProperty {value = Prelude.pure newValue, ..}