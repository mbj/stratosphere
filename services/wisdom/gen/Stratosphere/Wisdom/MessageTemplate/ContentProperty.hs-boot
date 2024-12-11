module Stratosphere.Wisdom.MessageTemplate.ContentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ContentProperty :: Prelude.Type
instance ToResourceProperties ContentProperty
instance Prelude.Eq ContentProperty
instance Prelude.Show ContentProperty
instance JSON.ToJSON ContentProperty