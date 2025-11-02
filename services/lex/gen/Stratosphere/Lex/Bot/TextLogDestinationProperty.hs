module Stratosphere.Lex.Bot.TextLogDestinationProperty (
        module Exports, TextLogDestinationProperty(..),
        mkTextLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CloudWatchLogGroupLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
data TextLogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textlogdestination.html>
    TextLogDestinationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-textlogdestination.html#cfn-lex-bot-textlogdestination-cloudwatch>
                                cloudWatch :: CloudWatchLogGroupLogDestinationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextLogDestinationProperty ::
  CloudWatchLogGroupLogDestinationProperty
  -> TextLogDestinationProperty
mkTextLogDestinationProperty cloudWatch
  = TextLogDestinationProperty
      {haddock_workaround_ = (), cloudWatch = cloudWatch}
instance ToResourceProperties TextLogDestinationProperty where
  toResourceProperties TextLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.TextLogDestination",
         supportsTags = Prelude.False,
         properties = ["CloudWatch" JSON..= cloudWatch]}
instance JSON.ToJSON TextLogDestinationProperty where
  toJSON TextLogDestinationProperty {..}
    = JSON.object ["CloudWatch" JSON..= cloudWatch]
instance Property "CloudWatch" TextLogDestinationProperty where
  type PropertyType "CloudWatch" TextLogDestinationProperty = CloudWatchLogGroupLogDestinationProperty
  set newValue TextLogDestinationProperty {..}
    = TextLogDestinationProperty {cloudWatch = newValue, ..}