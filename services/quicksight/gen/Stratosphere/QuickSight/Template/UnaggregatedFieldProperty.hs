module Stratosphere.QuickSight.Template.UnaggregatedFieldProperty (
        module Exports, UnaggregatedFieldProperty(..),
        mkUnaggregatedFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UnaggregatedFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-unaggregatedfield.html>
    UnaggregatedFieldProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-unaggregatedfield.html#cfn-quicksight-template-unaggregatedfield-column>
                               column :: ColumnIdentifierProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-unaggregatedfield.html#cfn-quicksight-template-unaggregatedfield-fieldid>
                               fieldId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-unaggregatedfield.html#cfn-quicksight-template-unaggregatedfield-formatconfiguration>
                               formatConfiguration :: (Prelude.Maybe FormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUnaggregatedFieldProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> UnaggregatedFieldProperty
mkUnaggregatedFieldProperty column fieldId
  = UnaggregatedFieldProperty
      {haddock_workaround_ = (), column = column, fieldId = fieldId,
       formatConfiguration = Prelude.Nothing}
instance ToResourceProperties UnaggregatedFieldProperty where
  toResourceProperties UnaggregatedFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.UnaggregatedField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Column" JSON..= column, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "FormatConfiguration"
                                 Prelude.<$> formatConfiguration]))}
instance JSON.ToJSON UnaggregatedFieldProperty where
  toJSON UnaggregatedFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Column" JSON..= column, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "FormatConfiguration"
                    Prelude.<$> formatConfiguration])))
instance Property "Column" UnaggregatedFieldProperty where
  type PropertyType "Column" UnaggregatedFieldProperty = ColumnIdentifierProperty
  set newValue UnaggregatedFieldProperty {..}
    = UnaggregatedFieldProperty {column = newValue, ..}
instance Property "FieldId" UnaggregatedFieldProperty where
  type PropertyType "FieldId" UnaggregatedFieldProperty = Value Prelude.Text
  set newValue UnaggregatedFieldProperty {..}
    = UnaggregatedFieldProperty {fieldId = newValue, ..}
instance Property "FormatConfiguration" UnaggregatedFieldProperty where
  type PropertyType "FormatConfiguration" UnaggregatedFieldProperty = FormatConfigurationProperty
  set newValue UnaggregatedFieldProperty {..}
    = UnaggregatedFieldProperty
        {formatConfiguration = Prelude.pure newValue, ..}