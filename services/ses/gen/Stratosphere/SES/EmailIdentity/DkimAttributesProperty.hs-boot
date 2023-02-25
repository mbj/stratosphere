module Stratosphere.SES.EmailIdentity.DkimAttributesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DkimAttributesProperty :: Prelude.Type
instance ToResourceProperties DkimAttributesProperty
instance JSON.ToJSON DkimAttributesProperty