module Stratosphere.Logs.Integration.ResourceConfigProperty (
        module Exports, ResourceConfigProperty(..),
        mkResourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.Integration.OpenSearchResourceConfigProperty as Exports
import Stratosphere.ResourceProperties
data ResourceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-resourceconfig.html>
    ResourceConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-integration-resourceconfig.html#cfn-logs-integration-resourceconfig-opensearchresourceconfig>
                            openSearchResourceConfig :: (Prelude.Maybe OpenSearchResourceConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceConfigProperty :: ResourceConfigProperty
mkResourceConfigProperty
  = ResourceConfigProperty
      {haddock_workaround_ = (),
       openSearchResourceConfig = Prelude.Nothing}
instance ToResourceProperties ResourceConfigProperty where
  toResourceProperties ResourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Integration.ResourceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OpenSearchResourceConfig"
                              Prelude.<$> openSearchResourceConfig])}
instance JSON.ToJSON ResourceConfigProperty where
  toJSON ResourceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OpenSearchResourceConfig"
                 Prelude.<$> openSearchResourceConfig]))
instance Property "OpenSearchResourceConfig" ResourceConfigProperty where
  type PropertyType "OpenSearchResourceConfig" ResourceConfigProperty = OpenSearchResourceConfigProperty
  set newValue ResourceConfigProperty {..}
    = ResourceConfigProperty
        {openSearchResourceConfig = Prelude.pure newValue, ..}