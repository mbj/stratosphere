module Stratosphere.CodeGuruProfiler.ProfilingGroup.ChannelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ChannelProperty :: Prelude.Type
instance ToResourceProperties ChannelProperty
instance JSON.ToJSON ChannelProperty