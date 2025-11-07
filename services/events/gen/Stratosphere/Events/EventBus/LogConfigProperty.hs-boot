module Stratosphere.Events.EventBus.LogConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogConfigProperty :: Prelude.Type
instance ToResourceProperties LogConfigProperty
instance Prelude.Eq LogConfigProperty
instance Prelude.Show LogConfigProperty
instance JSON.ToJSON LogConfigProperty