module Stratosphere.Lex.Bot.ConditionalSpecificationProperty (
        module Exports, ConditionalSpecificationProperty(..),
        mkConditionalSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConditionalBranchProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DefaultConditionalBranchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conditionalspecification.html>
    ConditionalSpecificationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conditionalspecification.html#cfn-lex-bot-conditionalspecification-conditionalbranches>
                                      conditionalBranches :: [ConditionalBranchProperty],
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conditionalspecification.html#cfn-lex-bot-conditionalspecification-defaultbranch>
                                      defaultBranch :: DefaultConditionalBranchProperty,
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conditionalspecification.html#cfn-lex-bot-conditionalspecification-isactive>
                                      isActive :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalSpecificationProperty ::
  [ConditionalBranchProperty]
  -> DefaultConditionalBranchProperty
     -> Value Prelude.Bool -> ConditionalSpecificationProperty
mkConditionalSpecificationProperty
  conditionalBranches
  defaultBranch
  isActive
  = ConditionalSpecificationProperty
      {haddock_workaround_ = (),
       conditionalBranches = conditionalBranches,
       defaultBranch = defaultBranch, isActive = isActive}
instance ToResourceProperties ConditionalSpecificationProperty where
  toResourceProperties ConditionalSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ConditionalSpecification",
         supportsTags = Prelude.False,
         properties = ["ConditionalBranches" JSON..= conditionalBranches,
                       "DefaultBranch" JSON..= defaultBranch,
                       "IsActive" JSON..= isActive]}
instance JSON.ToJSON ConditionalSpecificationProperty where
  toJSON ConditionalSpecificationProperty {..}
    = JSON.object
        ["ConditionalBranches" JSON..= conditionalBranches,
         "DefaultBranch" JSON..= defaultBranch, "IsActive" JSON..= isActive]
instance Property "ConditionalBranches" ConditionalSpecificationProperty where
  type PropertyType "ConditionalBranches" ConditionalSpecificationProperty = [ConditionalBranchProperty]
  set newValue ConditionalSpecificationProperty {..}
    = ConditionalSpecificationProperty
        {conditionalBranches = newValue, ..}
instance Property "DefaultBranch" ConditionalSpecificationProperty where
  type PropertyType "DefaultBranch" ConditionalSpecificationProperty = DefaultConditionalBranchProperty
  set newValue ConditionalSpecificationProperty {..}
    = ConditionalSpecificationProperty {defaultBranch = newValue, ..}
instance Property "IsActive" ConditionalSpecificationProperty where
  type PropertyType "IsActive" ConditionalSpecificationProperty = Value Prelude.Bool
  set newValue ConditionalSpecificationProperty {..}
    = ConditionalSpecificationProperty {isActive = newValue, ..}