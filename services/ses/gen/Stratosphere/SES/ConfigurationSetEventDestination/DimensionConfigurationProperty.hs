module Stratosphere.SES.ConfigurationSetEventDestination.DimensionConfigurationProperty (
        DimensionConfigurationProperty(..),
        mkDimensionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html>
    DimensionConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue>
                                    defaultDimensionValue :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionname>
                                    dimensionName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource>
                                    dimensionValueSource :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DimensionConfigurationProperty
mkDimensionConfigurationProperty
  defaultDimensionValue
  dimensionName
  dimensionValueSource
  = DimensionConfigurationProperty
      {haddock_workaround_ = (),
       defaultDimensionValue = defaultDimensionValue,
       dimensionName = dimensionName,
       dimensionValueSource = dimensionValueSource}
instance ToResourceProperties DimensionConfigurationProperty where
  toResourceProperties DimensionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSetEventDestination.DimensionConfiguration",
         supportsTags = Prelude.False,
         properties = ["DefaultDimensionValue"
                         JSON..= defaultDimensionValue,
                       "DimensionName" JSON..= dimensionName,
                       "DimensionValueSource" JSON..= dimensionValueSource]}
instance JSON.ToJSON DimensionConfigurationProperty where
  toJSON DimensionConfigurationProperty {..}
    = JSON.object
        ["DefaultDimensionValue" JSON..= defaultDimensionValue,
         "DimensionName" JSON..= dimensionName,
         "DimensionValueSource" JSON..= dimensionValueSource]
instance Property "DefaultDimensionValue" DimensionConfigurationProperty where
  type PropertyType "DefaultDimensionValue" DimensionConfigurationProperty = Value Prelude.Text
  set newValue DimensionConfigurationProperty {..}
    = DimensionConfigurationProperty
        {defaultDimensionValue = newValue, ..}
instance Property "DimensionName" DimensionConfigurationProperty where
  type PropertyType "DimensionName" DimensionConfigurationProperty = Value Prelude.Text
  set newValue DimensionConfigurationProperty {..}
    = DimensionConfigurationProperty {dimensionName = newValue, ..}
instance Property "DimensionValueSource" DimensionConfigurationProperty where
  type PropertyType "DimensionValueSource" DimensionConfigurationProperty = Value Prelude.Text
  set newValue DimensionConfigurationProperty {..}
    = DimensionConfigurationProperty
        {dimensionValueSource = newValue, ..}