module Stratosphere.QuickSight.Template.BodySectionRepeatDimensionConfigurationProperty (
        module Exports,
        BodySectionRepeatDimensionConfigurationProperty(..),
        mkBodySectionRepeatDimensionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BodySectionDynamicCategoryDimensionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BodySectionDynamicNumericDimensionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BodySectionRepeatDimensionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-bodysectionrepeatdimensionconfiguration.html>
    BodySectionRepeatDimensionConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-bodysectionrepeatdimensionconfiguration.html#cfn-quicksight-template-bodysectionrepeatdimensionconfiguration-dynamiccategorydimensionconfiguration>
                                                     dynamicCategoryDimensionConfiguration :: (Prelude.Maybe BodySectionDynamicCategoryDimensionConfigurationProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-bodysectionrepeatdimensionconfiguration.html#cfn-quicksight-template-bodysectionrepeatdimensionconfiguration-dynamicnumericdimensionconfiguration>
                                                     dynamicNumericDimensionConfiguration :: (Prelude.Maybe BodySectionDynamicNumericDimensionConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionRepeatDimensionConfigurationProperty ::
  BodySectionRepeatDimensionConfigurationProperty
mkBodySectionRepeatDimensionConfigurationProperty
  = BodySectionRepeatDimensionConfigurationProperty
      {haddock_workaround_ = (),
       dynamicCategoryDimensionConfiguration = Prelude.Nothing,
       dynamicNumericDimensionConfiguration = Prelude.Nothing}
instance ToResourceProperties BodySectionRepeatDimensionConfigurationProperty where
  toResourceProperties
    BodySectionRepeatDimensionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BodySectionRepeatDimensionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicCategoryDimensionConfiguration"
                              Prelude.<$> dynamicCategoryDimensionConfiguration,
                            (JSON..=) "DynamicNumericDimensionConfiguration"
                              Prelude.<$> dynamicNumericDimensionConfiguration])}
instance JSON.ToJSON BodySectionRepeatDimensionConfigurationProperty where
  toJSON BodySectionRepeatDimensionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicCategoryDimensionConfiguration"
                 Prelude.<$> dynamicCategoryDimensionConfiguration,
               (JSON..=) "DynamicNumericDimensionConfiguration"
                 Prelude.<$> dynamicNumericDimensionConfiguration]))
instance Property "DynamicCategoryDimensionConfiguration" BodySectionRepeatDimensionConfigurationProperty where
  type PropertyType "DynamicCategoryDimensionConfiguration" BodySectionRepeatDimensionConfigurationProperty = BodySectionDynamicCategoryDimensionConfigurationProperty
  set newValue BodySectionRepeatDimensionConfigurationProperty {..}
    = BodySectionRepeatDimensionConfigurationProperty
        {dynamicCategoryDimensionConfiguration = Prelude.pure newValue, ..}
instance Property "DynamicNumericDimensionConfiguration" BodySectionRepeatDimensionConfigurationProperty where
  type PropertyType "DynamicNumericDimensionConfiguration" BodySectionRepeatDimensionConfigurationProperty = BodySectionDynamicNumericDimensionConfigurationProperty
  set newValue BodySectionRepeatDimensionConfigurationProperty {..}
    = BodySectionRepeatDimensionConfigurationProperty
        {dynamicNumericDimensionConfiguration = Prelude.pure newValue, ..}