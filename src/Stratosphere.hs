-- | This is a library for creating AWS CloudFormation templates.
--
-- CloudFormation is a system that creates AWS resources from declarative
-- templates. One common criticism of CloudFormation is its use of JSON as the
-- template specification language. Once you have a large number of templates,
-- possibly including cross-references among themselves, raw JSON templates
-- become unwieldy, and it becomes harder to confidently modify them.
-- Stratosphere alleviates this issue by providing an Embedded Domain Specific
-- Language (EDSL) to construct templates.

module Stratosphere
  (
    -- * Introduction
    -- $intro

    -- * Usage
    -- $usage

    module Exports
  )
where

import Data.Function                   as Exports ((&))
import Stratosphere.Check              as Exports
import Stratosphere.Output             as Exports
import Stratosphere.Parameter          as Exports
import Stratosphere.Prelude            as Exports
import Stratosphere.Property           as Exports
import Stratosphere.NamedItem          as Exports
import Stratosphere.Resource           as Exports
import Stratosphere.ResourceProperties as Exports
import Stratosphere.Tag                as Exports
import Stratosphere.Template           as Exports
import Stratosphere.Value              as Exports

-- $intro
--
-- The core datatype of stratosphere is the 'Template', which corresponds to a
-- single CloudFormation template document. Users construct a template in a
-- type-safe way using simple data types. The following example creates a
-- template containing a single EC2 instance with a key pair passed in as a
-- parameter:
--
-- @
-- instanceTemplate :: Template
-- instanceTemplate =
--   template
--   [ resource "EC2Instance" (
--     EC2InstanceProperties $
--     ec2Instance
--     & eciImageId ?~ "ami-22111148"
--     & eciKeyName ?~ (Ref "KeyName")
--     )
--     & resourceDeletionPolicy ?~ Retain
--   ]
--   & templateDescription ?~ "Sample template"
--   & templateParameters ?~
--   [ parameter "KeyName" "AWS::EC2::KeyPair::KeyName"
--     & parameterDescription ?~ "Name of an existing EC2 KeyPair to enable SSH access to the instance"
--     & parameterConstraintDescription ?~ "Must be the name of an existing EC2 KeyPair."
--   ]
-- @

-- $usage
--
-- The types in stratosphere attempt to map exactly to CloudFormation template
-- components. For example, a template requires a set of 'Resources', and
-- optionally accepts a Description, 'Parameters', etc. For each component of a
-- template, there is usually a set of required arguments, and a (usually
-- large) number of optional arguments. Each record type has a corresponding
-- constructor function that has the required parameters as arguments.
--
-- For example, since a 'Template' requires a set of Resources, the 'template'
-- constructor has 'Resources' as an argument. Then, you can fill in the
-- 'Maybe' parameters using record updates.
--
-- Once a 'Template' is created, you can either use Aeson's encode function, or
-- use our 'encodeTemplate' function (based on aeson-pretty) to produce a JSON
-- ByteString. From there, you can use your favorite tool to interact with
-- CloudFormation using the template.
