module Stratosphere.SES.ContactList.TopicProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicProperty :: Prelude.Type
instance ToResourceProperties TopicProperty
instance Prelude.Eq TopicProperty
instance Prelude.Show TopicProperty
instance JSON.ToJSON TopicProperty