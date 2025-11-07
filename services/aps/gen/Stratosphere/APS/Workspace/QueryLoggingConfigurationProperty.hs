module Stratosphere.APS.Workspace.QueryLoggingConfigurationProperty (
        module Exports, QueryLoggingConfigurationProperty(..),
        mkQueryLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.APS.Workspace.LoggingDestinationProperty as Exports
import Stratosphere.ResourceProperties
data QueryLoggingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-queryloggingconfiguration.html>
    QueryLoggingConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-workspace-queryloggingconfiguration.html#cfn-aps-workspace-queryloggingconfiguration-destinations>
                                       destinations :: [LoggingDestinationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryLoggingConfigurationProperty ::
  [LoggingDestinationProperty] -> QueryLoggingConfigurationProperty
mkQueryLoggingConfigurationProperty destinations
  = QueryLoggingConfigurationProperty
      {haddock_workaround_ = (), destinations = destinations}
instance ToResourceProperties QueryLoggingConfigurationProperty where
  toResourceProperties QueryLoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Workspace.QueryLoggingConfiguration",
         supportsTags = Prelude.False,
         properties = ["Destinations" JSON..= destinations]}
instance JSON.ToJSON QueryLoggingConfigurationProperty where
  toJSON QueryLoggingConfigurationProperty {..}
    = JSON.object ["Destinations" JSON..= destinations]
instance Property "Destinations" QueryLoggingConfigurationProperty where
  type PropertyType "Destinations" QueryLoggingConfigurationProperty = [LoggingDestinationProperty]
  set newValue QueryLoggingConfigurationProperty {..}
    = QueryLoggingConfigurationProperty {destinations = newValue, ..}