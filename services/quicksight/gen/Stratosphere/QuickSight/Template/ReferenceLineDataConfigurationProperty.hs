module Stratosphere.QuickSight.Template.ReferenceLineDataConfigurationProperty (
        module Exports, ReferenceLineDataConfigurationProperty(..),
        mkReferenceLineDataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineDynamicDataConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineStaticDataConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReferenceLineDataConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedataconfiguration.html>
    ReferenceLineDataConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedataconfiguration.html#cfn-quicksight-template-referencelinedataconfiguration-axisbinding>
                                            axisBinding :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedataconfiguration.html#cfn-quicksight-template-referencelinedataconfiguration-dynamicconfiguration>
                                            dynamicConfiguration :: (Prelude.Maybe ReferenceLineDynamicDataConfigurationProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedataconfiguration.html#cfn-quicksight-template-referencelinedataconfiguration-seriestype>
                                            seriesType :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-referencelinedataconfiguration.html#cfn-quicksight-template-referencelinedataconfiguration-staticconfiguration>
                                            staticConfiguration :: (Prelude.Maybe ReferenceLineStaticDataConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReferenceLineDataConfigurationProperty ::
  ReferenceLineDataConfigurationProperty
mkReferenceLineDataConfigurationProperty
  = ReferenceLineDataConfigurationProperty
      {haddock_workaround_ = (), axisBinding = Prelude.Nothing,
       dynamicConfiguration = Prelude.Nothing,
       seriesType = Prelude.Nothing,
       staticConfiguration = Prelude.Nothing}
instance ToResourceProperties ReferenceLineDataConfigurationProperty where
  toResourceProperties ReferenceLineDataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ReferenceLineDataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisBinding" Prelude.<$> axisBinding,
                            (JSON..=) "DynamicConfiguration" Prelude.<$> dynamicConfiguration,
                            (JSON..=) "SeriesType" Prelude.<$> seriesType,
                            (JSON..=) "StaticConfiguration" Prelude.<$> staticConfiguration])}
instance JSON.ToJSON ReferenceLineDataConfigurationProperty where
  toJSON ReferenceLineDataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisBinding" Prelude.<$> axisBinding,
               (JSON..=) "DynamicConfiguration" Prelude.<$> dynamicConfiguration,
               (JSON..=) "SeriesType" Prelude.<$> seriesType,
               (JSON..=) "StaticConfiguration" Prelude.<$> staticConfiguration]))
instance Property "AxisBinding" ReferenceLineDataConfigurationProperty where
  type PropertyType "AxisBinding" ReferenceLineDataConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {axisBinding = Prelude.pure newValue, ..}
instance Property "DynamicConfiguration" ReferenceLineDataConfigurationProperty where
  type PropertyType "DynamicConfiguration" ReferenceLineDataConfigurationProperty = ReferenceLineDynamicDataConfigurationProperty
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {dynamicConfiguration = Prelude.pure newValue, ..}
instance Property "SeriesType" ReferenceLineDataConfigurationProperty where
  type PropertyType "SeriesType" ReferenceLineDataConfigurationProperty = Value Prelude.Text
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {seriesType = Prelude.pure newValue, ..}
instance Property "StaticConfiguration" ReferenceLineDataConfigurationProperty where
  type PropertyType "StaticConfiguration" ReferenceLineDataConfigurationProperty = ReferenceLineStaticDataConfigurationProperty
  set newValue ReferenceLineDataConfigurationProperty {..}
    = ReferenceLineDataConfigurationProperty
        {staticConfiguration = Prelude.pure newValue, ..}