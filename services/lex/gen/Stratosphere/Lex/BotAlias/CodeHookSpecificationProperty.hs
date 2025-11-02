module Stratosphere.Lex.BotAlias.CodeHookSpecificationProperty (
        module Exports, CodeHookSpecificationProperty(..),
        mkCodeHookSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.LambdaCodeHookProperty as Exports
import Stratosphere.ResourceProperties
data CodeHookSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-codehookspecification.html>
    CodeHookSpecificationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-codehookspecification.html#cfn-lex-botalias-codehookspecification-lambdacodehook>
                                   lambdaCodeHook :: LambdaCodeHookProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeHookSpecificationProperty ::
  LambdaCodeHookProperty -> CodeHookSpecificationProperty
mkCodeHookSpecificationProperty lambdaCodeHook
  = CodeHookSpecificationProperty
      {haddock_workaround_ = (), lambdaCodeHook = lambdaCodeHook}
instance ToResourceProperties CodeHookSpecificationProperty where
  toResourceProperties CodeHookSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.CodeHookSpecification",
         supportsTags = Prelude.False,
         properties = ["LambdaCodeHook" JSON..= lambdaCodeHook]}
instance JSON.ToJSON CodeHookSpecificationProperty where
  toJSON CodeHookSpecificationProperty {..}
    = JSON.object ["LambdaCodeHook" JSON..= lambdaCodeHook]
instance Property "LambdaCodeHook" CodeHookSpecificationProperty where
  type PropertyType "LambdaCodeHook" CodeHookSpecificationProperty = LambdaCodeHookProperty
  set newValue CodeHookSpecificationProperty {..}
    = CodeHookSpecificationProperty {lambdaCodeHook = newValue, ..}