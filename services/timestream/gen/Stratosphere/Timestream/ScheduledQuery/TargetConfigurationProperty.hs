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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-targetconfiguration.html>
    TargetConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-targetconfiguration.html#cfn-timestream-scheduledquery-targetconfiguration-timestreamconfiguration>
                                 timestreamConfiguration :: TimestreamConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetConfigurationProperty ::
  TimestreamConfigurationProperty -> TargetConfigurationProperty
mkTargetConfigurationProperty timestreamConfiguration
  = TargetConfigurationProperty
      {haddock_workaround_ = (),
       timestreamConfiguration = timestreamConfiguration}
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
  set newValue TargetConfigurationProperty {..}
    = TargetConfigurationProperty
        {timestreamConfiguration = newValue, ..}