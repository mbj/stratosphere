module Stratosphere.Lex.Bot.OutputContextProperty (
        OutputContextProperty(..), mkOutputContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputContextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-outputcontext.html>
    OutputContextProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-outputcontext.html#cfn-lex-bot-outputcontext-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-outputcontext.html#cfn-lex-bot-outputcontext-timetoliveinseconds>
                           timeToLiveInSeconds :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-outputcontext.html#cfn-lex-bot-outputcontext-turnstolive>
                           turnsToLive :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputContextProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Integer -> OutputContextProperty
mkOutputContextProperty name timeToLiveInSeconds turnsToLive
  = OutputContextProperty
      {haddock_workaround_ = (), name = name,
       timeToLiveInSeconds = timeToLiveInSeconds,
       turnsToLive = turnsToLive}
instance ToResourceProperties OutputContextProperty where
  toResourceProperties OutputContextProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.OutputContext",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name,
                       "TimeToLiveInSeconds" JSON..= timeToLiveInSeconds,
                       "TurnsToLive" JSON..= turnsToLive]}
instance JSON.ToJSON OutputContextProperty where
  toJSON OutputContextProperty {..}
    = JSON.object
        ["Name" JSON..= name,
         "TimeToLiveInSeconds" JSON..= timeToLiveInSeconds,
         "TurnsToLive" JSON..= turnsToLive]
instance Property "Name" OutputContextProperty where
  type PropertyType "Name" OutputContextProperty = Value Prelude.Text
  set newValue OutputContextProperty {..}
    = OutputContextProperty {name = newValue, ..}
instance Property "TimeToLiveInSeconds" OutputContextProperty where
  type PropertyType "TimeToLiveInSeconds" OutputContextProperty = Value Prelude.Integer
  set newValue OutputContextProperty {..}
    = OutputContextProperty {timeToLiveInSeconds = newValue, ..}
instance Property "TurnsToLive" OutputContextProperty where
  type PropertyType "TurnsToLive" OutputContextProperty = Value Prelude.Integer
  set newValue OutputContextProperty {..}
    = OutputContextProperty {turnsToLive = newValue, ..}