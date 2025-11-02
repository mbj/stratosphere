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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html>
    SnaplockRetentionPeriodProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html#cfn-fsx-volume-snaplockretentionperiod-defaultretention>
                                     defaultRetention :: RetentionPeriodProperty,
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html#cfn-fsx-volume-snaplockretentionperiod-maximumretention>
                                     maximumRetention :: RetentionPeriodProperty,
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-snaplockretentionperiod.html#cfn-fsx-volume-snaplockretentionperiod-minimumretention>
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
      {haddock_workaround_ = (), defaultRetention = defaultRetention,
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