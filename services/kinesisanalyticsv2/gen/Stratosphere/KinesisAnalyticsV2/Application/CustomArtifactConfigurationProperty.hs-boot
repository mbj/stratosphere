module Stratosphere.KinesisAnalyticsV2.Application.CustomArtifactConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomArtifactConfigurationProperty :: Prelude.Type
instance ToResourceProperties CustomArtifactConfigurationProperty
instance JSON.ToJSON CustomArtifactConfigurationProperty