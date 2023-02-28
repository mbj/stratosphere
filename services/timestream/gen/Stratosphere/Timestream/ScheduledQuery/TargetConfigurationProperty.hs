module Stratosphere.Timestream.ScheduledQuery.TargetConfigurationProperty (
        module Exports, TargetConfigurationProperty(..),
        mkTargetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.TimestreamConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TargetConfigurationProperty
  = TargetConfigurationProperty {timestreamConfiguration :: TimestreamConfigurationProperty}
mkTargetConfigurationProperty ::
  TimestreamConfigurationProperty -> TargetConfigurationProperty
mkTargetConfigurationProperty timestreamConfiguration
  = TargetConfigurationProperty
      {timestreamConfiguration = timestreamConfiguration}
instance ToResourceProperties TargetConfigurationProperty where
  toResourceProperties TargetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.TargetConfiguration",
         supportsTags = Prelude.False,
         properties = ["TimestreamConfiguration"
                         JSON..= timestreamConfiguration]}
instance JSON.ToJSON TargetConfigurationProperty where
  toJSON TargetConfigurationProperty {..}
    = JSON.object
        ["TimestreamConfiguration" JSON..= timestreamConfiguration]
instance Property "TimestreamConfiguration" TargetConfigurationProperty where
  type PropertyType "TimestreamConfiguration" TargetConfigurationProperty = TimestreamConfigurationProperty
  set newValue TargetConfigurationProperty {}
    = TargetConfigurationProperty
        {timestreamConfiguration = newValue, ..}