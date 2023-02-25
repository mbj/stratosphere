module Stratosphere.ApplicationInsights.Application.SubComponentTypeConfigurationProperty (
        module Exports, SubComponentTypeConfigurationProperty(..),
        mkSubComponentTypeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.SubComponentConfigurationDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubComponentTypeConfigurationProperty
  = SubComponentTypeConfigurationProperty {subComponentConfigurationDetails :: SubComponentConfigurationDetailsProperty,
                                           subComponentType :: (Value Prelude.Text)}
mkSubComponentTypeConfigurationProperty ::
  SubComponentConfigurationDetailsProperty
  -> Value Prelude.Text -> SubComponentTypeConfigurationProperty
mkSubComponentTypeConfigurationProperty
  subComponentConfigurationDetails
  subComponentType
  = SubComponentTypeConfigurationProperty
      {subComponentConfigurationDetails = subComponentConfigurationDetails,
       subComponentType = subComponentType}
instance ToResourceProperties SubComponentTypeConfigurationProperty where
  toResourceProperties SubComponentTypeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.SubComponentTypeConfiguration",
         properties = ["SubComponentConfigurationDetails"
                         JSON..= subComponentConfigurationDetails,
                       "SubComponentType" JSON..= subComponentType]}
instance JSON.ToJSON SubComponentTypeConfigurationProperty where
  toJSON SubComponentTypeConfigurationProperty {..}
    = JSON.object
        ["SubComponentConfigurationDetails"
           JSON..= subComponentConfigurationDetails,
         "SubComponentType" JSON..= subComponentType]
instance Property "SubComponentConfigurationDetails" SubComponentTypeConfigurationProperty where
  type PropertyType "SubComponentConfigurationDetails" SubComponentTypeConfigurationProperty = SubComponentConfigurationDetailsProperty
  set newValue SubComponentTypeConfigurationProperty {..}
    = SubComponentTypeConfigurationProperty
        {subComponentConfigurationDetails = newValue, ..}
instance Property "SubComponentType" SubComponentTypeConfigurationProperty where
  type PropertyType "SubComponentType" SubComponentTypeConfigurationProperty = Value Prelude.Text
  set newValue SubComponentTypeConfigurationProperty {..}
    = SubComponentTypeConfigurationProperty
        {subComponentType = newValue, ..}