module Stratosphere.SNS.Topic.SubscriptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SubscriptionProperty :: Prelude.Type
instance ToResourceProperties SubscriptionProperty
instance Prelude.Eq SubscriptionProperty
instance Prelude.Show SubscriptionProperty
instance JSON.ToJSON SubscriptionProperty