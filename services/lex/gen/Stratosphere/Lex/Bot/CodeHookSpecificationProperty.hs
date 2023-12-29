module Stratosphere.Lex.Bot.CodeHookSpecificationProperty (
        module Exports, CodeHookSpecificationProperty(..),
        mkCodeHookSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.LambdaCodeHookProperty as Exports
import Stratosphere.ResourceProperties
data CodeHookSpecificationProperty
  = CodeHookSpecificationProperty {lambdaCodeHook :: LambdaCodeHookProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCodeHookSpecificationProperty ::
  LambdaCodeHookProperty -> CodeHookSpecificationProperty
mkCodeHookSpecificationProperty lambdaCodeHook
  = CodeHookSpecificationProperty {lambdaCodeHook = lambdaCodeHook}
instance ToResourceProperties CodeHookSpecificationProperty where
  toResourceProperties CodeHookSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.CodeHookSpecification",
         supportsTags = Prelude.False,
         properties = ["LambdaCodeHook" JSON..= lambdaCodeHook]}
instance JSON.ToJSON CodeHookSpecificationProperty where
  toJSON CodeHookSpecificationProperty {..}
    = JSON.object ["LambdaCodeHook" JSON..= lambdaCodeHook]
instance Property "LambdaCodeHook" CodeHookSpecificationProperty where
  type PropertyType "LambdaCodeHook" CodeHookSpecificationProperty = LambdaCodeHookProperty
  set newValue CodeHookSpecificationProperty {}
    = CodeHookSpecificationProperty {lambdaCodeHook = newValue, ..}