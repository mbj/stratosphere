module Stratosphere.CloudFormation.WaitConditionHandle (
        WaitConditionHandle(..), mkWaitConditionHandle
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WaitConditionHandle
  = WaitConditionHandle {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaitConditionHandle :: WaitConditionHandle
mkWaitConditionHandle = WaitConditionHandle {}
instance ToResourceProperties WaitConditionHandle where
  toResourceProperties WaitConditionHandle {}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::WaitConditionHandle",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON WaitConditionHandle where
  toJSON WaitConditionHandle {} = JSON.object []