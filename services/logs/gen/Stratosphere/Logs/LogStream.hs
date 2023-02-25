module Stratosphere.Logs.LogStream (
        LogStream(..), mkLogStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogStream
  = LogStream {logGroupName :: (Value Prelude.Text),
               logStreamName :: (Prelude.Maybe (Value Prelude.Text))}
mkLogStream :: Value Prelude.Text -> LogStream
mkLogStream logGroupName
  = LogStream
      {logGroupName = logGroupName, logStreamName = Prelude.Nothing}
instance ToResourceProperties LogStream where
  toResourceProperties LogStream {..}
    = ResourceProperties
        {awsType = "AWS::Logs::LogStream",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LogGroupName" JSON..= logGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "LogStreamName" Prelude.<$> logStreamName]))}
instance JSON.ToJSON LogStream where
  toJSON LogStream {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LogGroupName" JSON..= logGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "LogStreamName" Prelude.<$> logStreamName])))
instance Property "LogGroupName" LogStream where
  type PropertyType "LogGroupName" LogStream = Value Prelude.Text
  set newValue LogStream {..}
    = LogStream {logGroupName = newValue, ..}
instance Property "LogStreamName" LogStream where
  type PropertyType "LogStreamName" LogStream = Value Prelude.Text
  set newValue LogStream {..}
    = LogStream {logStreamName = Prelude.pure newValue, ..}