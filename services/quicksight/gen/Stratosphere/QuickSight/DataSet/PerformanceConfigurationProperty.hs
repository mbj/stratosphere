module Stratosphere.QuickSight.DataSet.PerformanceConfigurationProperty (
        module Exports, PerformanceConfigurationProperty(..),
        mkPerformanceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.UniqueKeyProperty as Exports
import Stratosphere.ResourceProperties
data PerformanceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-performanceconfiguration.html>
    PerformanceConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-performanceconfiguration.html#cfn-quicksight-dataset-performanceconfiguration-uniquekeys>
                                      uniqueKeys :: (Prelude.Maybe [UniqueKeyProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPerformanceConfigurationProperty ::
  PerformanceConfigurationProperty
mkPerformanceConfigurationProperty
  = PerformanceConfigurationProperty
      {haddock_workaround_ = (), uniqueKeys = Prelude.Nothing}
instance ToResourceProperties PerformanceConfigurationProperty where
  toResourceProperties PerformanceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.PerformanceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UniqueKeys" Prelude.<$> uniqueKeys])}
instance JSON.ToJSON PerformanceConfigurationProperty where
  toJSON PerformanceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UniqueKeys" Prelude.<$> uniqueKeys]))
instance Property "UniqueKeys" PerformanceConfigurationProperty where
  type PropertyType "UniqueKeys" PerformanceConfigurationProperty = [UniqueKeyProperty]
  set newValue PerformanceConfigurationProperty {..}
    = PerformanceConfigurationProperty
        {uniqueKeys = Prelude.pure newValue, ..}