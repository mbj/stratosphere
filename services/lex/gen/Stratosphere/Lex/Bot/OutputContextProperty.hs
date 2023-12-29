module Stratosphere.Lex.Bot.OutputContextProperty (
        OutputContextProperty(..), mkOutputContextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputContextProperty
  = OutputContextProperty {name :: (Value Prelude.Text),
                           timeToLiveInSeconds :: (Value Prelude.Integer),
                           turnsToLive :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputContextProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Integer -> OutputContextProperty
mkOutputContextProperty name timeToLiveInSeconds turnsToLive
  = OutputContextProperty
      {name = name, timeToLiveInSeconds = timeToLiveInSeconds,
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