module Stratosphere.QuickSight.DataSet.RefreshFailureConfigurationProperty (
        module Exports, RefreshFailureConfigurationProperty(..),
        mkRefreshFailureConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RefreshFailureEmailAlertProperty as Exports
import Stratosphere.ResourceProperties
data RefreshFailureConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-refreshfailureconfiguration.html>
    RefreshFailureConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-refreshfailureconfiguration.html#cfn-quicksight-dataset-refreshfailureconfiguration-emailalert>
                                         emailAlert :: (Prelude.Maybe RefreshFailureEmailAlertProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshFailureConfigurationProperty ::
  RefreshFailureConfigurationProperty
mkRefreshFailureConfigurationProperty
  = RefreshFailureConfigurationProperty
      {haddock_workaround_ = (), emailAlert = Prelude.Nothing}
instance ToResourceProperties RefreshFailureConfigurationProperty where
  toResourceProperties RefreshFailureConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RefreshFailureConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailAlert" Prelude.<$> emailAlert])}
instance JSON.ToJSON RefreshFailureConfigurationProperty where
  toJSON RefreshFailureConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailAlert" Prelude.<$> emailAlert]))
instance Property "EmailAlert" RefreshFailureConfigurationProperty where
  type PropertyType "EmailAlert" RefreshFailureConfigurationProperty = RefreshFailureEmailAlertProperty
  set newValue RefreshFailureConfigurationProperty {..}
    = RefreshFailureConfigurationProperty
        {emailAlert = Prelude.pure newValue, ..}