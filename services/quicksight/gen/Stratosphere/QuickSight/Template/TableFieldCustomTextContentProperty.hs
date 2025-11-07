module Stratosphere.QuickSight.Template.TableFieldCustomTextContentProperty (
        module Exports, TableFieldCustomTextContentProperty(..),
        mkTableFieldCustomTextContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableFieldCustomTextContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldcustomtextcontent.html>
    TableFieldCustomTextContentProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldcustomtextcontent.html#cfn-quicksight-template-tablefieldcustomtextcontent-fontconfiguration>
                                         fontConfiguration :: FontConfigurationProperty,
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-tablefieldcustomtextcontent.html#cfn-quicksight-template-tablefieldcustomtextcontent-value>
                                         value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableFieldCustomTextContentProperty ::
  FontConfigurationProperty -> TableFieldCustomTextContentProperty
mkTableFieldCustomTextContentProperty fontConfiguration
  = TableFieldCustomTextContentProperty
      {haddock_workaround_ = (), fontConfiguration = fontConfiguration,
       value = Prelude.Nothing}
instance ToResourceProperties TableFieldCustomTextContentProperty where
  toResourceProperties TableFieldCustomTextContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableFieldCustomTextContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FontConfiguration" JSON..= fontConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON TableFieldCustomTextContentProperty where
  toJSON TableFieldCustomTextContentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FontConfiguration" JSON..= fontConfiguration]
              (Prelude.catMaybes [(JSON..=) "Value" Prelude.<$> value])))
instance Property "FontConfiguration" TableFieldCustomTextContentProperty where
  type PropertyType "FontConfiguration" TableFieldCustomTextContentProperty = FontConfigurationProperty
  set newValue TableFieldCustomTextContentProperty {..}
    = TableFieldCustomTextContentProperty
        {fontConfiguration = newValue, ..}
instance Property "Value" TableFieldCustomTextContentProperty where
  type PropertyType "Value" TableFieldCustomTextContentProperty = Value Prelude.Text
  set newValue TableFieldCustomTextContentProperty {..}
    = TableFieldCustomTextContentProperty
        {value = Prelude.pure newValue, ..}