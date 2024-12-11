module Stratosphere.MediaConnect.Flow.FmtpProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FmtpProperty :: Prelude.Type
instance ToResourceProperties FmtpProperty
instance Prelude.Eq FmtpProperty
instance Prelude.Show FmtpProperty
instance JSON.ToJSON FmtpProperty