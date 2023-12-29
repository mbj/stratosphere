module Stratosphere.Budgets.Budget.NotificationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NotificationProperty :: Prelude.Type
instance ToResourceProperties NotificationProperty
instance Prelude.Eq NotificationProperty
instance Prelude.Show NotificationProperty
instance JSON.ToJSON NotificationProperty