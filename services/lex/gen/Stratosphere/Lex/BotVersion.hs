module Stratosphere.Lex.BotVersion (
        module Exports, BotVersion(..), mkBotVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotVersion.BotVersionLocaleSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-botversion.html>
    BotVersion {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-botversion.html#cfn-lex-botversion-botid>
                botId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-botversion.html#cfn-lex-botversion-botversionlocalespecification>
                botVersionLocaleSpecification :: [BotVersionLocaleSpecificationProperty],
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lex-botversion.html#cfn-lex-botversion-description>
                description :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBotVersion ::
  Value Prelude.Text
  -> [BotVersionLocaleSpecificationProperty] -> BotVersion
mkBotVersion botId botVersionLocaleSpecification
  = BotVersion
      {haddock_workaround_ = (), botId = botId,
       botVersionLocaleSpecification = botVersionLocaleSpecification,
       description = Prelude.Nothing}
instance ToResourceProperties BotVersion where
  toResourceProperties BotVersion {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotVersion", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BotId" JSON..= botId,
                            "BotVersionLocaleSpecification"
                              JSON..= botVersionLocaleSpecification]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description]))}
instance JSON.ToJSON BotVersion where
  toJSON BotVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BotId" JSON..= botId,
               "BotVersionLocaleSpecification"
                 JSON..= botVersionLocaleSpecification]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description])))
instance Property "BotId" BotVersion where
  type PropertyType "BotId" BotVersion = Value Prelude.Text
  set newValue BotVersion {..} = BotVersion {botId = newValue, ..}
instance Property "BotVersionLocaleSpecification" BotVersion where
  type PropertyType "BotVersionLocaleSpecification" BotVersion = [BotVersionLocaleSpecificationProperty]
  set newValue BotVersion {..}
    = BotVersion {botVersionLocaleSpecification = newValue, ..}
instance Property "Description" BotVersion where
  type PropertyType "Description" BotVersion = Value Prelude.Text
  set newValue BotVersion {..}
    = BotVersion {description = Prelude.pure newValue, ..}