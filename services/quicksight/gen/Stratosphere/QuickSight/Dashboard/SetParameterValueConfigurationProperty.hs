module Stratosphere.QuickSight.Dashboard.SetParameterValueConfigurationProperty (
        module Exports, SetParameterValueConfigurationProperty(..),
        mkSetParameterValueConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DestinationParameterValueConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SetParameterValueConfigurationProperty
  = SetParameterValueConfigurationProperty {destinationParameterName :: (Value Prelude.Text),
                                            value :: DestinationParameterValueConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSetParameterValueConfigurationProperty ::
  Value Prelude.Text
  -> DestinationParameterValueConfigurationProperty
     -> SetParameterValueConfigurationProperty
mkSetParameterValueConfigurationProperty
  destinationParameterName
  value
  = SetParameterValueConfigurationProperty
      {destinationParameterName = destinationParameterName,
       value = value}
instance ToResourceProperties SetParameterValueConfigurationProperty where
  toResourceProperties SetParameterValueConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SetParameterValueConfiguration",
         supportsTags = Prelude.False,
         properties = ["DestinationParameterName"
                         JSON..= destinationParameterName,
                       "Value" JSON..= value]}
instance JSON.ToJSON SetParameterValueConfigurationProperty where
  toJSON SetParameterValueConfigurationProperty {..}
    = JSON.object
        ["DestinationParameterName" JSON..= destinationParameterName,
         "Value" JSON..= value]
instance Property "DestinationParameterName" SetParameterValueConfigurationProperty where
  type PropertyType "DestinationParameterName" SetParameterValueConfigurationProperty = Value Prelude.Text
  set newValue SetParameterValueConfigurationProperty {..}
    = SetParameterValueConfigurationProperty
        {destinationParameterName = newValue, ..}
instance Property "Value" SetParameterValueConfigurationProperty where
  type PropertyType "Value" SetParameterValueConfigurationProperty = DestinationParameterValueConfigurationProperty
  set newValue SetParameterValueConfigurationProperty {..}
    = SetParameterValueConfigurationProperty {value = newValue, ..}