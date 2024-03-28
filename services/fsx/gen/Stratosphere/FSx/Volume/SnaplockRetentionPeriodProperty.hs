module Stratosphere.FSx.Volume.SnaplockRetentionPeriodProperty (
        module Exports, SnaplockRetentionPeriodProperty(..),
        mkSnaplockRetentionPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.Volume.RetentionPeriodProperty as Exports
import Stratosphere.ResourceProperties
data SnaplockRetentionPeriodProperty
  = SnaplockRetentionPeriodProperty {defaultRetention :: RetentionPeriodProperty,
                                     maximumRetention :: RetentionPeriodProperty,
                                     minimumRetention :: RetentionPeriodProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnaplockRetentionPeriodProperty ::
  RetentionPeriodProperty
  -> RetentionPeriodProperty
     -> RetentionPeriodProperty -> SnaplockRetentionPeriodProperty
mkSnaplockRetentionPeriodProperty
  defaultRetention
  maximumRetention
  minimumRetention
  = SnaplockRetentionPeriodProperty
      {defaultRetention = defaultRetention,
       maximumRetention = maximumRetention,
       minimumRetention = minimumRetention}
instance ToResourceProperties SnaplockRetentionPeriodProperty where
  toResourceProperties SnaplockRetentionPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.SnaplockRetentionPeriod",
         supportsTags = Prelude.False,
         properties = ["DefaultRetention" JSON..= defaultRetention,
                       "MaximumRetention" JSON..= maximumRetention,
                       "MinimumRetention" JSON..= minimumRetention]}
instance JSON.ToJSON SnaplockRetentionPeriodProperty where
  toJSON SnaplockRetentionPeriodProperty {..}
    = JSON.object
        ["DefaultRetention" JSON..= defaultRetention,
         "MaximumRetention" JSON..= maximumRetention,
         "MinimumRetention" JSON..= minimumRetention]
instance Property "DefaultRetention" SnaplockRetentionPeriodProperty where
  type PropertyType "DefaultRetention" SnaplockRetentionPeriodProperty = RetentionPeriodProperty
  set newValue SnaplockRetentionPeriodProperty {..}
    = SnaplockRetentionPeriodProperty {defaultRetention = newValue, ..}
instance Property "MaximumRetention" SnaplockRetentionPeriodProperty where
  type PropertyType "MaximumRetention" SnaplockRetentionPeriodProperty = RetentionPeriodProperty
  set newValue SnaplockRetentionPeriodProperty {..}
    = SnaplockRetentionPeriodProperty {maximumRetention = newValue, ..}
instance Property "MinimumRetention" SnaplockRetentionPeriodProperty where
  type PropertyType "MinimumRetention" SnaplockRetentionPeriodProperty = RetentionPeriodProperty
  set newValue SnaplockRetentionPeriodProperty {..}
    = SnaplockRetentionPeriodProperty {minimumRetention = newValue, ..}