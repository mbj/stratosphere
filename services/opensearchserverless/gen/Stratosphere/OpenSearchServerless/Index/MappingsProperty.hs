module Stratosphere.OpenSearchServerless.Index.MappingsProperty (
        module Exports, MappingsProperty(..), mkMappingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchServerless.Index.PropertyMappingProperty as Exports
import Stratosphere.ResourceProperties
data MappingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-mappings.html>
    MappingsProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchserverless-index-mappings.html#cfn-opensearchserverless-index-mappings-properties>
                      properties :: (Prelude.Maybe (Prelude.Map Prelude.Text PropertyMappingProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMappingsProperty :: MappingsProperty
mkMappingsProperty
  = MappingsProperty
      {haddock_workaround_ = (), properties = Prelude.Nothing}
instance ToResourceProperties MappingsProperty where
  toResourceProperties MappingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchServerless::Index.Mappings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Properties" Prelude.<$> properties])}
instance JSON.ToJSON MappingsProperty where
  toJSON MappingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Properties" Prelude.<$> properties]))
instance Property "Properties" MappingsProperty where
  type PropertyType "Properties" MappingsProperty = Prelude.Map Prelude.Text PropertyMappingProperty
  set newValue MappingsProperty {..}
    = MappingsProperty {properties = Prelude.pure newValue, ..}