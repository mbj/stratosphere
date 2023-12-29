module Stratosphere.Budgets.Budget.SubscriberProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SubscriberProperty :: Prelude.Type
instance ToResourceProperties SubscriberProperty
instance Prelude.Eq SubscriberProperty
instance Prelude.Show SubscriberProperty
instance JSON.ToJSON SubscriberProperty