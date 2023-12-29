module Stratosphere.KinesisAnalytics.ApplicationOutput.OutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputProperty :: Prelude.Type
instance ToResourceProperties OutputProperty
instance Prelude.Eq OutputProperty
instance Prelude.Show OutputProperty
instance JSON.ToJSON OutputProperty