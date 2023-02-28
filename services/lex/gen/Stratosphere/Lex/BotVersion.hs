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
  = BotVersion {botId :: (Value Prelude.Text),
                botVersionLocaleSpecification :: [BotVersionLocaleSpecificationProperty],
                description :: (Prelude.Maybe (Value Prelude.Text))}
mkBotVersion ::
  Value Prelude.Text
  -> [BotVersionLocaleSpecificationProperty] -> BotVersion
mkBotVersion botId botVersionLocaleSpecification
  = BotVersion
      {botId = botId,
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