module Stratosphere.AppIntegrations.Application.IframeConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data IframeConfigProperty :: Prelude.Type
instance ToResourceProperties IframeConfigProperty
instance Prelude.Eq IframeConfigProperty
instance Prelude.Show IframeConfigProperty
instance JSON.ToJSON IframeConfigProperty