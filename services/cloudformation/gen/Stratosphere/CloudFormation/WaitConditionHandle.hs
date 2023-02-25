module Stratosphere.CloudFormation.WaitConditionHandle (
        WaitConditionHandle(..), mkWaitConditionHandle
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data WaitConditionHandle = WaitConditionHandle {}
mkWaitConditionHandle :: WaitConditionHandle
mkWaitConditionHandle = WaitConditionHandle {}
instance ToResourceProperties WaitConditionHandle where
  toResourceProperties WaitConditionHandle {}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::WaitConditionHandle",
         properties = []}
instance JSON.ToJSON WaitConditionHandle where
  toJSON WaitConditionHandle {} = JSON.object []