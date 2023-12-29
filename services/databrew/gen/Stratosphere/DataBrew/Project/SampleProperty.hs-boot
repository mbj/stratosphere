module Stratosphere.DataBrew.Project.SampleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SampleProperty :: Prelude.Type
instance ToResourceProperties SampleProperty
instance Prelude.Eq SampleProperty
instance Prelude.Show SampleProperty
instance JSON.ToJSON SampleProperty